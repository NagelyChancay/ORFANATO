alter table ADMINISTRADOR
   add constraint FK_ADMINIST_RELATIONS_FICHA_IN foreign key (ID_FICHA_INGRESO)
      references FICHA_INGRESO (ID_FICHA_INGRESO);

alter table ADMINISTRADOR
   add constraint FK_ADMINIST_RELATIONS_FICHA_ME foreign key (ID_FICHA_MEDICA)
      references FICHA_MEDICA (ID_FICHA_MEDICA);

alter table ADMINISTRADOR
   add constraint FK_ADMINIST_RELATIONS_ORFANATO foreign key (ID_ORFANATO)
      references ORFANATO (ID_ORFANATO);

alter table ADOPTANTE
   add constraint FK_ADOPTANT_RELATIONS_ORFANATO foreign key (ID_ORFANATO)
      references ORFANATO (ID_ORFANATO);

alter table ADOPTANTE
   add constraint FK_ADOPTANT_RELATIONS_HUERFANO foreign key (ID_HUERFANO)
      references HUERFANO (ID_HUERFANO);

alter table FICHA_ADOPCION
   add constraint FK_FICHA_AD_RELATIONS_ADOPTANT foreign key (ID_ADOPTANTE)
      references ADOPTANTE (ID_ADOPTANTE);

alter table FICHA_ADOPCION
   add constraint FK_FICHA_AD_RELATIONS_HUERFANO foreign key (ID_HUERFANO)
      references HUERFANO (ID_HUERFANO);

alter table FICHA_INGRESO
   add constraint FK_FICHA_IN_RELATIONS_ADMINIST foreign key (ID_ADMINISTRADOR)
      references ADMINISTRADOR (ID_ADMINISTRADOR);

alter table FICHA_INGRESO
   add constraint FK_FICHA_IN_RELATIONS_HUERFANO foreign key (ID_HUERFANO)
      references HUERFANO (ID_HUERFANO);

alter table FICHA_MEDICA
   add constraint FK_FICHA_ME_RELATIONS_ADMINIST foreign key (ID_ADMINISTRADOR)
      references ADMINISTRADOR (ID_ADMINISTRADOR);

alter table FICHA_MEDICA
   add constraint FK_FICHA_ME_RELATIONS_HUERFANO foreign key (ID_HUERFANO)
      references HUERFANO (ID_HUERFANO);

alter table HUERFANO
   add constraint FK_HUERFANO_RELATIONS_ORFANATO foreign key (ID_ORFANATO)
      references ORFANATO (ID_ORFANATO);

alter table PADRINO
   add constraint FK_PADRINO_RELATIONS_HUERFANO foreign key (ID_HUERFANO)
      references HUERFANO (ID_HUERFANO);

alter table PADRINO
   add constraint FK_PADRINO_RELATIONS_ORFANATO foreign key (ID_ORFANATO)
      references ORFANATO (ID_ORFANATO);
class AppConstants {
  AppConstants ();


  static const String appName = 'EcoScan Rewards';
  static const String appVersion = '1.0.0';

  //Roles de app
  static const String roleAdmin = 'admin';
  static const String roleUser = 'Recicler';

  //Materiales reciclables
  static const String materialPlastic = 'Plástico';
  static const String materialPaper = 'Papel';
  static const String materialGlass = 'Vidrio';
  static const String materialMetal = 'Metal';
  static const String materialCardboard = 'Cartón'; 
  static const String materialElectronics = 'Electrónicos';
  static const String materialUnknown = 'Desconocido';
  
  static const List<String> materials = [
    materialPlastic,
    materialPaper,
    materialGlass,
    materialMetal,
    materialCardboard,  
    materialElectronics,
  ];  

  static const Map<String, String> pointsPerMaterial = {
    materialPlastic: '10',
    materialPaper: '5',
    materialGlass: '15',
    materialMetal: '20',
    materialCardboard: '8',  
    materialElectronics: '25',
    materialUnknown: '0',
  };

  //umbrales ML Kit
  static const double minConfidenceThreshold = 0.55;
  static const double highConfidenceThreshold = 0.75;

  //DB
  static const String dbName = 'ecoscan_rewards.db';
  static const int dbVersion = 1;

  //Shared Preferences
  static const String prefUserId = 'user_id';
  static const String prefUserRole = 'user_role';
  static const String perfUserName = "user_name";

}
function fn() {
      var env = karate.env;
      karate.log('karate.env system property was:', env);
      if (!env) {
        env = 'dev';
      }
  return {
    api:{
        baseUrl: 'https://petstore.swagger.io/v2',

    },
    data:{
        idPet: 123,
        name: 'Cosmo',
        category: 'Dogs',
        status: 'available',
        statusModified: 'sold'
    }

  }
}
{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-parallel-executor";
  version = "0.2.4";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-bATsJAzgpra65psT2IWeoerANGlCT6IgvkOpnn0dMSM=";
  };

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to process packages in parallel.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}

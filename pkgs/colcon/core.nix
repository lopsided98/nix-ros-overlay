{ lib, buildPythonApplication, buildPythonPackage, makeWrapper, fetchPypi
, isPy27, python, distlib, empy, pytest, pytestcov, pytest-repeat
, pytest-rerunfailures, pytestrunner }:

let
  withExtensions = extensions: buildPythonApplication {
    pname = "colcon";
    inherit (package) version;
    phases = [ "installPhase" "fixupPhase" ];
    buildInputs = [ makeWrapper package] ++ extensions;

    installPhase = ''
      makeWrapper '${package}/bin/colcon' "$out/bin/colcon" \
        --prefix PYTHONPATH : "$PYTHONPATH"
    '';

    passthru = package.passthru // {
      withPlugins = moreExtensions: withExtensions (moreExtensions ++ extensions);
    };
  };

  package = buildPythonPackage rec {
    pname = "colcon-core";
    version = "0.4.0";

    src = fetchPypi {
      inherit pname version;
      sha256 = "0yk3762nz9ym5sr3v1mm7imdr0jac379b2lhmwkwc3ix8yjxzj5h";
    };

    propagatedBuildInputs = [
      distlib
      empy
      pytest
      pytestcov
      pytest-repeat
      pytest-rerunfailures
      pytestrunner
    ];

    # Requires unpackaged dependencies
    doCheck = false;

    disabled = isPy27;

    passthru = {
      inherit withExtensions;
    };

    meta = with lib; {
      description = "Command line tool to build sets of software packages.";
      homepage = "https://colcon.readthedocs.io";
      license = licenses.asl20;
      maintainers = with maintainers; [ lopsided98 ];
    };
  };
in package

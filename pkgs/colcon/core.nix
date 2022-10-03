{ lib, buildPythonApplication, buildPythonPackage, makeWrapper, fetchPypi
, isPy27, python, distlib, empy, pytest, pytest-cov, pytest-repeat
, pytest-rerunfailures, pytest-runner }:

let
  withExtensions = extensions: buildPythonApplication {
    pname = "colcon";
    inherit (package) version;
    format = "other";

    dontUnpack = true;
    dontBuild = true;
    doCheck = false;

    nativeBuildInputs = [ makeWrapper ];
    buildInputs = [ package ] ++ extensions;

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
    version = "0.6.1";

    src = fetchPypi {
      inherit pname version;
      sha256 = "1sfvkq5ppyqw8ywibnhmkkbdai9yvw6vph5g6b1zqig75i5m657w";
    };

    propagatedBuildInputs = [
      distlib
      empy
      pytest
      pytest-cov
      pytest-repeat
      pytest-rerunfailures
      pytest-runner
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


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/launch_pal-release/archive/release/humble/launch_pal/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "98a330791b5fa6ad50cb7d8fa0137d3018ba76ee27c18fffb1837a6f9dafa1ef";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}

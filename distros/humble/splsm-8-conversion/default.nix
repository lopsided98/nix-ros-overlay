
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, splsm-8 }:
buildRosPackage {
  pname = "ros-humble-splsm-8-conversion";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/splsm_8_conversion/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "0d1cd3498045a713c579261228ffb9cea8845549eec69f7464f1ca986a589497";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-8 ];

  meta = {
    description = "Converts Standard Platform League Standard Message V8 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}

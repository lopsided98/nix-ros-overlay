
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, urdf }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-description";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_description/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "c9ecf65ec72d8f4f8d2486ab74903529f8f6787a13d07ccdb424284187570394";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-lint-auto ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides the model description for the iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

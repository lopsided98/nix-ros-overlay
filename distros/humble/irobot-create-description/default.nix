
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, urdf }:
buildRosPackage {
  pname = "ros-humble-irobot-create-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "efc97b6997893600772882f3cd6e88c13680a4ac1db1a4715841ab6e4b7cef92";
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

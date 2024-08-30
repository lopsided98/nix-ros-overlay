
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, irobot-create-control, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-description";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_description/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "130de83374d61e115aebee2eda3a17d1e4b87942a4bda734ef510cd17c061b17";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-lint-auto ];
  propagatedBuildInputs = [ irobot-create-control urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides the model description for the iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-kilted-easynav-playground-summit-description";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/kilted/easynav_playground_summit_description/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "f448ca65a5a1ee15bc6fc2e72e63642e9800d733c4cddf02192c77d94479df1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robotnik Summit XL robot description for the EasyNav playgrounds: URDF, meshes and ros2_control controllers, from Robotnik's robot_description and robotnik_sensors.";
    license = with lib.licenses; [ bsd3 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-kilted-easynav-playground-summit-description";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/kilted/easynav_playground_summit_description/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a01ff901f8a6be5c111b20d4b0d03664f04336c7532377192bfc428219e5bc80";
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

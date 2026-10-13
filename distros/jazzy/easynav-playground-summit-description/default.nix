
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-summit-description";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_summit_description/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "dd2bc9b8445568d35555f489e8908f35707d4582b479bc57b3e331f3654baeab";
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

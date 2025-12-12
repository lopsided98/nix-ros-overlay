
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-jazzy-moveit";
  version = "2.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit/2.12.4-1.tar.gz";
    name = "2.12.4-1.tar.gz";
    sha256 = "ecc574676e7f9192fd97eb0dad8a906cd34e8a572563e973c50435d2f56d079b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros moveit-setup-assistant ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that contains all essential packages of MoveIt 2";
    license = with lib.licenses; [ bsd3 ];
  };
}

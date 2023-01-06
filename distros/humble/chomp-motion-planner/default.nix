
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, rclcpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-chomp-motion-planner";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/chomp_motion_planner/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "a4ae7dba7ef85ac7eaa1be70ac5ecc6855fab5df45da9b85cdd62fe9e02ec015";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-common moveit-core rclcpp trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

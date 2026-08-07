
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, git, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2, tf2-geometry-msgs, tf2-kdl, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-lyrical-pick-ik";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/lyrical/pick_ik/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "41891de3709c2626e5e7a91a26734cf2232c3603bd61f0b14d363e481894db95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ git moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt generate-parameter-library moveit-core pluginlib range-v3 rclcpp rsl tf2 tf2-geometry-msgs tf2-kdl tl-expected-nixpkgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Inverse Kinematics solver for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}

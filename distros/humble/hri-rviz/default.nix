
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, cv-bridge, hri, hri-msgs, rclcpp, rcpputils, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-hri-rviz";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_rviz-release/archive/release/humble/hri_rviz/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "af23a87890a63829488935aba4e8e6f3d2235f80df317a1c005f34b374324885";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge hri hri-msgs rclcpp rcpputils rviz-common rviz-default-plugins rviz-ogre-vendor sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Set of rviz plugins for ROS4HRI data visualization";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, boost, geometry-msgs, openssl, pluginlib, rclcpp, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-warehouse-ros";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/warehouse_ros-release/archive/release/foxy/warehouse_ros/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "2b45dcda6e48d339486b838ab6e1303f74684effa8de23c145dbfdb30f6c73ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ openssl ];
  checkInputs = [ ament-cmake-copyright ament-lint-auto ];
  propagatedBuildInputs = [ boost geometry-msgs pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

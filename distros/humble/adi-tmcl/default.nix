
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, ros2launch, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-adi-tmcl";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl-release/archive/release/humble/adi_tmcl/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "81aa7333bd14f20733ce64db029279e944e8a73f4f05ec92cfb2696c9d9303a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp ros2launch rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The adi_tmcl ROS2 package'';
    license = with lib.licenses; [ bsd3 ];
  };
}

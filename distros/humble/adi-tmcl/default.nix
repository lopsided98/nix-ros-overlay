
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, ros2launch, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-adi-tmcl";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl-release/archive/release/humble/adi_tmcl/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "111f6f7c1412f268696ca3f2e1595372943a845300ddd33c58b1bdb0ee038300";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp ros2launch rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The adi_tmcl ROS2 package";
    license = with lib.licenses; [ bsd3 ];
  };
}

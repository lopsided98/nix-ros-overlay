
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, autoware-cmake, autoware-lanelet2-extension, boost, geometry-msgs, lanelet2-core, lanelet2-io, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, python-cmake-module, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-autoware-lanelet2-extension-python";
  version = "0.7.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_lanelet2_extension-release/archive/release/lyrical/autoware_lanelet2_extension_python/0.7.2-3.tar.gz";
    name = "0.7.2-3.tar.gz";
    sha256 = "09e4583841bbb49e2ee8cffb1ea9a4ab687e2208f6a4764665a443b816a953f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ autoware-lanelet2-extension boost geometry-msgs lanelet2-core lanelet2-io lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules lanelet2-validation rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];

  meta = {
    description = "The autoware_lanelet2_extension_python package contains Python bindings for lanelet2_extension package";
    license = with lib.licenses; [ asl20 ];
  };
}

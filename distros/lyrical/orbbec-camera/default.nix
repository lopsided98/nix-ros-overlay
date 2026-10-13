
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, camera-info-manager, cv-bridge, diagnostic-msgs, diagnostic-updater, eigen, geometry-msgs, gflags, glog, image-publisher, image-transport, launch, launch-ros, libGL, libGLU, message-filters, nlohmann_json, opencv, openssl, orbbec-camera-msgs, pkg-config, python3Packages, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclpy, rmw, sensor-msgs, statistics-msgs, std-msgs, std-srvs, tf2, tf2-msgs, tf2-ros, tf2-sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-orbbec-camera";
  version = "2.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/lyrical/orbbec_camera/2.10.6-1.tar.gz";
    name = "2.10.6-1.tar.gz";
    sha256 = "28162039cc457238df4798bc58b02803529166989f179c7f7b9319edd3359f4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python ament-lint-auto ament-lint-common backward-ros builtin-interfaces camera-info-manager cv-bridge diagnostic-msgs diagnostic-updater eigen geometry-msgs gflags glog image-publisher image-transport launch launch-ros libGL libGLU message-filters nlohmann_json opencv opencv.cxxdev openssl orbbec-camera-msgs python3Packages.psutil python3Packages.pyyaml python3Packages.tabulate rcl-interfaces rclcpp rclcpp-action rclcpp-components rclpy rmw sensor-msgs statistics-msgs std-msgs std-srvs tf2 tf2-msgs tf2-ros tf2-sensor-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Orbbec Camera package";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, camera-info-manager, cv-bridge, diagnostic-msgs, diagnostic-updater, gflags, glog, image-publisher, image-transport, libGL, libGLU, nlohmann_json, openssl, orbbec-camera-msgs, rclcpp, rclcpp-components, sensor-msgs, statistics-msgs, std-msgs, std-srvs, tf2, tf2-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-camera";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v2-release/archive/release/jazzy/orbbec_camera/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "3b8252a7463b106448432c08b7bc2a9ad5c42d1ca16faa6ffc3b850ce2517d81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp ament-lint-auto ament-lint-common backward-ros builtin-interfaces camera-info-manager cv-bridge diagnostic-msgs diagnostic-updater gflags glog image-publisher image-transport libGL libGLU nlohmann_json openssl orbbec-camera-msgs rclcpp rclcpp-components sensor-msgs statistics-msgs std-msgs std-srvs tf2 tf2-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Orbbec Camera package";
    license = with lib.licenses; [ asl20 ];
  };
}

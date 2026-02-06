
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, camera-info-manager, cv-bridge, diagnostic-msgs, diagnostic-updater, gflags, glog, image-publisher, image-transport, libGL, libGLU, nlohmann_json, openssl, orbbec-camera-msgs, rclcpp, rclcpp-components, sensor-msgs, statistics-msgs, std-msgs, std-srvs, tf2, tf2-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-orbbec-camera";
  version = "2.6.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/humble/orbbec_camera/2.6.3-2.tar.gz";
    name = "2.6.3-2.tar.gz";
    sha256 = "de2c43c3e982ef0af4ff96e8dafedc39d193250e379e5ab9f0e57b67870376fd";
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

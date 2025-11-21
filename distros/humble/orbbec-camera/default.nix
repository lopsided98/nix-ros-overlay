
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, camera-info-manager, cv-bridge, diagnostic-msgs, diagnostic-updater, gflags, glog, image-publisher, image-transport, libGL, libGLU, nlohmann_json, openssl, orbbec-camera-msgs, rclcpp, rclcpp-components, sensor-msgs, statistics-msgs, std-msgs, std-srvs, tf2, tf2-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-orbbec-camera";
  version = "2.5.5-r2";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v2-release/archive/release/humble/orbbec_camera/2.5.5-2.tar.gz";
    name = "2.5.5-2.tar.gz";
    sha256 = "02b5841b663e77bc3d36a54b5cb638c261735201304c0e1e6ed9d95df26d8a2b";
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

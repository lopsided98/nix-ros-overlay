
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, camera-info-manager, cv-bridge, diagnostic-msgs, diagnostic-updater, elfutils, gflags, glog, image-publisher, image-transport, libGL, libGLU, nlohmann_json, orbbec-camera-msgs, rclcpp, rclcpp-components, sensor-msgs, statistics-msgs, std-msgs, std-srvs, tf2, tf2-eigen, tf2-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-orbbec-camera";
  version = "1.5.14-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v1-release/archive/release/humble/orbbec_camera/1.5.14-1.tar.gz";
    name = "1.5.14-1.tar.gz";
    sha256 = "0c79ef5ceaf20b8083d8d30f6d9693ea758b2fb9387781cbb32208eb532996f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp ament-lint-auto ament-lint-common backward-ros builtin-interfaces camera-info-manager cv-bridge diagnostic-msgs diagnostic-updater elfutils gflags glog image-publisher image-transport libGL libGLU nlohmann_json orbbec-camera-msgs rclcpp rclcpp-components sensor-msgs statistics-msgs std-msgs std-srvs tf2 tf2-eigen tf2-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Orbbec Camera package";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, builtin-interfaces, camera-info-manager, cv-bridge, diagnostic-msgs, diagnostic-updater, gflags, glog, image-publisher, image-transport, nlohmann_json, orbbec-camera-msgs, rclcpp, rclcpp-components, sensor-msgs, statistics-msgs, std-msgs, std-srvs, tf2, tf2-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-camera";
  version = "2.5.4-r2";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v2-release/archive/release/jazzy/orbbec_camera/2.5.4-2.tar.gz";
    name = "2.5.4-2.tar.gz";
    sha256 = "1fedb94bf16022609c5f130daf5e72ecaac12e1f4f0cb84598134a4186657786";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp ament-lint-auto ament-lint-common backward-ros builtin-interfaces camera-info-manager cv-bridge diagnostic-msgs diagnostic-updater gflags glog image-publisher image-transport nlohmann_json orbbec-camera-msgs rclcpp rclcpp-components sensor-msgs statistics-msgs std-msgs std-srvs tf2 tf2-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Orbbec Camera package";
    license = with lib.licenses; [ asl20 ];
  };
}

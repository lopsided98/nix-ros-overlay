
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-lola-command-msgs, nao-lola-sensor-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nao-lola-client";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/jazzy/nao_lola_client/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "2ec29f79ef383e9649e11650be9f84bc15418db499b8d49b01ab70460184c882";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-lola-command-msgs nao-lola-sensor-msgs rcl-interfaces rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages that allow communicating with the NAO's Lola middle-ware.";
    license = with lib.licenses; [ asl20 ];
  };
}

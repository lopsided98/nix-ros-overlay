
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, rclcpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-kilted-io-context";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/kilted/io_context/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "2003d33ddbb75e1afe064db117953141883d27b917af9e04360b1af032c6b1bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto asio-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio rclcpp std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = "A library to write Synchronous and Asynchronous networking applications";
    license = with lib.licenses; [ asl20 ];
  };
}

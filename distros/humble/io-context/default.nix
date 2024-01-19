
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, rclcpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-humble-io-context";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/humble/io_context/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "ded83fa80d974c77cba3adb4bba9dff0c3f64b2f69282532e45fe90772802855";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto asio-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio rclcpp std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = ''A library to write Synchronous and Asynchronous networking applications'';
    license = with lib.licenses; [ asl20 ];
  };
}

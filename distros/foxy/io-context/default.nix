
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, example-interfaces, rclcpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-foxy-io-context";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/foxy/io_context/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6319763aa21c765ae1f070032c86a7d267dc1cffd66b4d72dcd1bb8a537b42ce";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio example-interfaces rclcpp std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = ''A library to write Synchronous and Asynchronous networking applications'';
    license = with lib.licenses; [ asl20 ];
  };
}

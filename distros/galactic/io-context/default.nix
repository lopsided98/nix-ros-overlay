
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, example-interfaces, rclcpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-galactic-io-context";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/galactic/io_context/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "fe1781df60e76e5eb0e03bf46f2b36127e500c65431491014d0729fdffef5a14";
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

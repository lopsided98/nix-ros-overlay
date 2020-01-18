
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, micro-xrce-dds-agent, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-microxrcedds-agent-cmake-module";
  version = "0.0.1-r2";

  src = fetchurl {
    url = https://github.com/micro-ROS/micro-ROS-Agent-release/archive/release/crystal/microxrcedds_agent_cmake_module/0.0.1-2.tar.gz;
    sha256 = "98f5c52ea0905c8db2c03ad4a66fef5efa557767387384243bffdff042bf8282";
  };

  buildInputs = [ micro-xrce-dds-agent ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ micro-xrce-dds-agent ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find eProsima Micro XRCE-DDS Agent'';
    license = with lib.licenses; [ asl20 ];
  };
}

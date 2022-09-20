
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-xml, launch-yaml, ros2action, ros2cli, ros2component, ros2doctor, ros2interface, ros2launch, ros2lifecycle, ros2multicast, ros2node, ros2param, ros2pkg, ros2run, ros2service, ros2topic, sros2 }:
buildRosPackage {
  pname = "ros-foxy-ros2cli-common-extensions";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli_common_extensions-release/archive/release/foxy/ros2cli_common_extensions/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a4084d90a9eb5802668306ea9c563eb6e882015707e21f3a9c6ec6ef58927c0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-xml launch-yaml ros2action ros2cli ros2component ros2doctor ros2interface ros2launch ros2lifecycle ros2multicast ros2node ros2param ros2pkg ros2run ros2service ros2topic sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package for ros2cli common extensions'';
    license = with lib.licenses; [ asl20 ];
  };
}

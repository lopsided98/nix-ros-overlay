
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-xml, launch-yaml, ros2action, ros2cli, ros2component, ros2doctor, ros2interface, ros2launch, ros2lifecycle, ros2multicast, ros2node, ros2param, ros2pkg, ros2run, ros2service, ros2topic, sros2 }:
buildRosPackage {
  pname = "ros-jazzy-ros2cli-common-extensions";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli_common_extensions-release/archive/release/jazzy/ros2cli_common_extensions/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "bfbd3cd7a9442743ee4c86937a12abf3304bd272d4a00da66e8eecbdbeaf653f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-xml launch-yaml ros2action ros2cli ros2component ros2doctor ros2interface ros2launch ros2lifecycle ros2multicast ros2node ros2param ros2pkg ros2run ros2service ros2topic sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for ros2cli common extensions";
    license = with lib.licenses; [ asl20 ];
  };
}

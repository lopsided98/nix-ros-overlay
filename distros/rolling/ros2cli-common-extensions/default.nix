
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-xml, launch-yaml, ros2action, ros2cli, ros2component, ros2doctor, ros2interface, ros2launch, ros2lifecycle, ros2multicast, ros2node, ros2param, ros2pkg, ros2run, ros2service, ros2topic, sros2 }:
buildRosPackage {
  pname = "ros-rolling-ros2cli-common-extensions";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli_common_extensions-release/archive/release/rolling/ros2cli_common_extensions/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "d3c5aa5226bef02463036a70264b4680ef03d9b3d345ff99f8d5e88f1f39282f";
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

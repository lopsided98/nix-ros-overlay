
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-xml, launch-yaml, ros2action, ros2cli, ros2component, ros2doctor, ros2interface, ros2launch, ros2lifecycle, ros2multicast, ros2node, ros2param, ros2pkg, ros2plugin, ros2run, ros2service, ros2topic, sros2 }:
buildRosPackage {
  pname = "ros-lyrical-ros2cli-common-extensions";
  version = "0.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli_common_extensions-release/archive/release/lyrical/ros2cli_common_extensions/0.5.2-3.tar.gz";
    name = "0.5.2-3.tar.gz";
    sha256 = "e784c997b541e451c56baca3cdc8a75ac9fa7f359f3db4b24b37f6f60c1bc388";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-xml launch-yaml ros2action ros2cli ros2component ros2doctor ros2interface ros2launch ros2lifecycle ros2multicast ros2node ros2param ros2pkg ros2plugin ros2run ros2service ros2topic sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for ros2cli common extensions";
    license = with lib.licenses; [ asl20 ];
  };
}

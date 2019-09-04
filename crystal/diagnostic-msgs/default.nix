
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-diagnostic-msgs";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/common_interfaces-release/archive/release/crystal/diagnostic_msgs/0.6.1-0.tar.gz;
    sha256 = "fb8bea9a6b213a575647cb0daa3ae1b271216a254babe767effec9c8b123ae1f";
  };

  buildInputs = [ std-msgs geometry-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some diagnostics related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

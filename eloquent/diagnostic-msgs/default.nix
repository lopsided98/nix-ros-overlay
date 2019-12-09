
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-eloquent-diagnostic-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/diagnostic_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "d6793eaa2385d65af0ae1526d4e3f2dc700e70edcde1972996bd890efb7363a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces geometry-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime builtin-interfaces geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some diagnostics related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

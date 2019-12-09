
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, geometry-msgs, std-msgs, rosidl-default-runtime, ament-lint-common, ament-cmake, ament-cmake-gtest, rosidl-default-generators, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-sensor-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/sensor_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "dc7a03b5581c5709fefff3c9194a5cce0d7f263f38091a0034c2d8012b03eb37";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces geometry-msgs ];
  checkInputs = [ rosidl-cmake ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime builtin-interfaces geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some sensor data related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-eloquent-visualization-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/visualization_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "ae0eb73d3f65138890896c3bd07841c1f76b9542d864e1d4f63ecfc113a94ffc";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces geometry-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime builtin-interfaces geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some visualization and interaction related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

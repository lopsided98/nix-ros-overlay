
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-eloquent-geometry-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/geometry_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "b8292aaa80c4f404ccb7826f3e3fc90055f66b71f4ce9cb04f872cdfaeab3863";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some geometry related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

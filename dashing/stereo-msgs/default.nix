
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, sensor-msgs, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-dashing-stereo-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/dashing/stereo_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "2ad0cbf0fbbe21aafee75d0ee4ec9c6a78837c6d111e6d72d8e6fd68d1da315e";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some stereo camera related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

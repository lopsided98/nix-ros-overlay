
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-realsense-camera-msgs";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/dashing/realsense_camera_msgs/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "2811b4bedb5504d7293785cadbe74cf4426d98a5d05069d480856bd1b18c024f";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing realsense camera messages definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}

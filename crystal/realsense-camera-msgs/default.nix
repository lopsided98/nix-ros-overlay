
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-crystal-realsense-camera-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/crystal/realsense_camera_msgs/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "bbf211ae9823bcb1d68f9c1f2d75b506154350a7037f8f578e0ba347ad9412e5";
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

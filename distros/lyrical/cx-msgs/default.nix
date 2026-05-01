
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-lyrical-cx-msgs";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_msgs/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "6d89e13f24dae6056465d388b95567f3620cf752ac49ca0631d3ca87d7e3b770";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interfaces for ROS2 CLIPS-Executive";
    license = with lib.licenses; [ asl20 ];
  };
}

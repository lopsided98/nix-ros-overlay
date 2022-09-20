
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, std-msgs, tf2, vrpn }:
buildRosPackage {
  pname = "ros-foxy-vrpn-mocap";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn_mocap-release/archive/release/foxy/vrpn_mocap/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "7e2cf600915b00bdb04387d4d543bce6e49286a6ca53b93aee6ba99fde20a7b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp std-msgs tf2 vrpn ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''ROS2 <a href="https://github.com/vrpn/vrpn">VRPN</a>
    client built primarily to interface with motion
    capture devices such as VICON and OptiTrack. A detailed list of
    supported hardware can be found
    <a href="https://github.com/vrpn/vrpn/wiki/Available-hardware-devices">here</a>.'';
    license = with lib.licenses; [ mit ];
  };
}

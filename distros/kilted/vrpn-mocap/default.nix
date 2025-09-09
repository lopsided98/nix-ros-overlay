
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, std-msgs, tf2, vrpn }:
buildRosPackage {
  pname = "ros-kilted-vrpn-mocap";
  version = "1.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn_mocap-release/archive/release/kilted/vrpn_mocap/1.1.0-4.tar.gz";
    name = "1.1.0-4.tar.gz";
    sha256 = "03f1e72e7b5b7ad62206d086cf16559d3f615d07c7b3151f53385eebe708fb6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp std-msgs tf2 vrpn ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "ROS2 <a href=\"https://github.com/vrpn/vrpn\">VRPN</a>
    client built primarily to interface with motion
    capture devices such as VICON and OptiTrack. A detailed list of
    supported hardware can be found
    <a href=\"https://github.com/vrpn/vrpn/wiki/Available-hardware-devices\">here</a>.";
    license = with lib.licenses; [ mit ];
  };
}

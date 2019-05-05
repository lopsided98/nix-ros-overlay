
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rosserial-msgs, nav-msgs, message-runtime, rospy, std-msgs, rosserial-client, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rosserial-windows";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_windows/0.7.7-0.tar.gz;
    sha256 = "4f5c3e1e67d8e643fee1b6bc9844f7e3d1864e5b4e9177d99e0ae6f6829a3e05";
  };

  buildInputs = [ sensor-msgs nav-msgs rosserial-client std-msgs geometry-msgs ];
  propagatedBuildInputs = [ rospy rosserial-msgs message-runtime rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Windows platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, class-loader, catkin, linuxHeaders, rosunit }:
buildRosPackage {
  pname = "ros-lunar-socketcan-interface";
  version = "0.7.9";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/socketcan_interface/0.7.9-0.tar.gz;
    sha256 = "aab83fb3ea9d0c77e2a58e4d74a0e433295c265d695f517ea4daa47540120f18";
  };

  buildInputs = [ linuxHeaders class-loader boost ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ linuxHeaders class-loader boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}


# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libpcap, libyamlcpp, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rslidar-sdk";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rslidar_sdk-release/archive/release/melodic/rslidar_sdk/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "915a93b2bdead3e4c5dc6616578a1bfd17a6b9d860e80628b594b81a5fe92d8c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libpcap libyamlcpp pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

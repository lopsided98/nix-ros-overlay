
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, rocon-std-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-rocon-device-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/rocon_device_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "e2b55ec1c00c3c40fe7df6c19206e676fd8a3abff63bcd1bcd9531ddbb1036e8";
  };

  buildType = "catkin";
  buildInputs = [ rocon-std-msgs std-msgs message-generation ];
  propagatedBuildInputs = [ rocon-std-msgs std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by rocon devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

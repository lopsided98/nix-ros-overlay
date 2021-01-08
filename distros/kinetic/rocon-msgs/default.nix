
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, concert-msgs, concert-service-msgs, gateway-msgs, rocon-app-manager-msgs, rocon-device-msgs, rocon-interaction-msgs, rocon-service-pair-msgs, rocon-std-msgs, rocon-tutorial-msgs, scheduler-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "efd0a5a7038dbd2faa70183e0db06f9f5e3aecc750bb7849d655d1adae956c50";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ concert-msgs concert-service-msgs gateway-msgs rocon-app-manager-msgs rocon-device-msgs rocon-interaction-msgs rocon-service-pair-msgs rocon-std-msgs rocon-tutorial-msgs scheduler-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Communication types (msgs/srvs/actions) for robotics in concert (aka multimaster).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

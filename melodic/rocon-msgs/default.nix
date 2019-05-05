
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, concert-msgs, rocon-std-msgs, catkin, gateway-msgs, rocon-app-manager-msgs, rocon-interaction-msgs, rocon-service-pair-msgs, rocon-tutorial-msgs, scheduler-msgs, rocon-device-msgs, concert-service-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/rocon_msgs/0.9.0-0.tar.gz;
    sha256 = "5eca94dc0ac40d38a417f7e804e77d25f3abb25ceda463b681ad24186a0444c2";
  };

  propagatedBuildInputs = [ concert-msgs gateway-msgs rocon-app-manager-msgs rocon-interaction-msgs rocon-service-pair-msgs rocon-tutorial-msgs scheduler-msgs rocon-device-msgs concert-service-msgs rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Communication types (msgs/srvs/actions) for robotics in concert (aka multimaster).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

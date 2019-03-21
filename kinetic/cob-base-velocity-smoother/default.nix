
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, nav-msgs, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-velocity-smoother";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_velocity_smoother/0.7.3-0.tar.gz;
    sha256 = "83065db8c463a8ec6cb6f6e12153479b6a8812d2833f7bcca9c62ba01c968968";
  };

  propagatedBuildInputs = [ nav-msgs boost roslint dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ nav-msgs boost roslint dynamic-reconfigure std-msgs catkin roscpp geometry-msgs ];

  meta = {
    description = ''The 'cob_base_velocity_smoother' reads velocity messages and publishes messages of the same type for &quot;smoothed&quot; velocity to avoid shaking behavior.'';
    #license = lib.licenses.Apache 2.0;
  };
}

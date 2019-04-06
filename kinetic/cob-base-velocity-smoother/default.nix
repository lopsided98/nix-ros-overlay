
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, nav-msgs, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-velocity-smoother";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_base_velocity_smoother/0.7.4-0.tar.gz;
    sha256 = "d303591c5669b85d760d68a9e08a67818bee2ba7d798a7190d906cc5838e2567";
  };

  propagatedBuildInputs = [ nav-msgs boost roslint dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ nav-msgs boost roslint dynamic-reconfigure std-msgs catkin roscpp geometry-msgs ];

  meta = {
    description = ''The 'cob_base_velocity_smoother' reads velocity messages and publishes messages of the same type for &quot;smoothed&quot; velocity to avoid shaking behavior.'';
    #license = lib.licenses.Apache 2.0;
  };
}

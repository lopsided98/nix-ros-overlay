
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, nav-msgs, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-base-velocity-smoother";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_base_velocity_smoother/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "b61978c3085f865678cf238a44dfec284ab04c74266ee71019ca309fd2d65448";
  };

  buildType = "catkin";
  buildInputs = [ boost roslint nav-msgs dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ boost roslint nav-msgs dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The 'cob_base_velocity_smoother' reads velocity messages and publishes messages of the same type for &quot;smoothed&quot; velocity to avoid shaking behavior.'';
    license = with lib.licenses; [ asl20 ];
  };
}

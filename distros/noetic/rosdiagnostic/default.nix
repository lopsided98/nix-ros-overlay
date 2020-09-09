
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosdiagnostic";
  version = "1.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/rosdiagnostic/1.10.2-1.tar.gz";
    name = "1.10.2-1.tar.gz";
    sha256 = "da749f217a0e01779ecd8badfbca72e78e501f5559aad484a8b62e8fa11eb59a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

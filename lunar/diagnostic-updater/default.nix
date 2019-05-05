
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-diagnostic-updater";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_updater/1.9.3-0.tar.gz;
    sha256 = "9dd45b160c99157988a3b5563d03af76c2042d7376dd514c56de6b81059514e2";
  };

  buildInputs = [ diagnostic-msgs rostest roscpp std-msgs ];
  propagatedBuildInputs = [ diagnostic-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_updater contains tools for easily updating diagnostics. it is commonly used in device drivers to keep track of the status of output topics, device status, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

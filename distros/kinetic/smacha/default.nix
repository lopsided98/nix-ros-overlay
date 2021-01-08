
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python, pythonPackages, smach }:
buildRosPackage {
  pname = "ros-kinetic-smacha";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ReconCell/smacha-release/archive/release/kinetic/smacha/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "01250572e0485a1afb31328c92087e449212c0473d316a113a5a304d82b95300";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.unittest2 ];
  propagatedBuildInputs = [ python pythonPackages.jinja2 pythonPackages.ruamel_yaml smach ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SMACHA (short for &quot;State Machine Assembler&quot;, pronounced &quot;smasha&quot;) aims at distilling the task-level simplicity of SMACH into compact YAML-based scripts in the foreground, while retaining all of its power and flexibility in Jinja2-based templates and a custom code generation engine in the background.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

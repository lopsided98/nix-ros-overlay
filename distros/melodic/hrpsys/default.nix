
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, cmake, doxygen, freeglut, git, glew, graphviz, irrlicht, libxml2, mk, opencv, openhrp3, pkg-config, pythonPackages, qhull, xorg }:
buildRosPackage {
  pname = "ros-melodic-hrpsys";
  version = "315.15.0-r8";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "hrpsys-release";
        rev = "release/melodic/hrpsys/315.15.0-8";
        sha256 = "sha256-E266Bh+jOlroIyrHPLSAKlGMXOY1X0L4EVZ9fcSESQU=";
      };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git glew graphviz mk pkg-config ];
  propagatedBuildInputs = [ SDL freeglut irrlicht libxml2 opencv openhrp3 pythonPackages.tkinter qhull xorg.libXmu ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''<p>An <a href="http://www.openrtm.org/pub/OpenRTM-aist/">OpenRTM-aist</a>-based robot controller. This package is the most tailored for humanoid (dual-arm and/or biped) robots for historical reason.</p>
   <p>hrpsys package does not only wraps but build and installs the code from its mainstream repository (<a href="https://github.com/fkanehiro/hrpsys-base/">github.com/fkanehiro/hrpsys-base</a>).</p>
   <p>The package version number is synchronized to that of mainstream, based on <a href="https://github.com/start-jsk/rtmros_common/issues/165#issuecomment-34536168">this decision</a>. Its semantics:<br/>
    <ul>
     <li><b>MAJOR</b>: Synchronized with <a href="http://wiki.ros.org/openhrp3">OpenHRP3</a></li>
     <li><b>MINOR</b>: Indicate IDL compatibility (packages with different version numbers in this section are NOT compatible)</li>
     <li><b>PATCH</b>: Packages with different version numbers in this section ARE compatible.</li>
    </ul>
   </p>
   <p>API document is <a href="http://fkanehiro.github.io/hrpsys-base/">auto-generated on github</a>.
   </p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
